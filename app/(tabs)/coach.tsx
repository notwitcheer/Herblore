import { useState, useRef, useCallback } from "react";
import {
  View,
  Text,
  TextInput,
  StyleSheet,
  FlatList,
  Pressable,
  KeyboardAvoidingView,
  Platform,
  ActivityIndicator,
} from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useTranslation } from "react-i18next";
import * as Haptics from "expo-haptics";
import { colors, spacing, radii, typography } from "@/lib/constants";
import { OwlMascot } from "@/components/icons";
import { useSubscription } from "@/lib/SubscriptionContext";
import { supabase } from "@/lib/supabase";

interface Message {
  id: string;
  role: "user" | "assistant";
  content: string;
}

export default function CoachScreen() {
  const { t } = useTranslation();
  const { isSubscribed } = useSubscription();
  const [messages, setMessages] = useState<Message[]>([]);
  const [input, setInput] = useState("");
  const [loading, setLoading] = useState(false);
  const flatListRef = useRef<FlatList>(null);

  const sendMessage = useCallback(async () => {
    const text = input.trim();
    if (!text || loading) return;

    Haptics.selectionAsync();
    setInput("");

    const userMsg: Message = {
      id: `user-${Date.now()}`,
      role: "user",
      content: text,
    };
    setMessages((prev) => [...prev, userMsg]);
    setLoading(true);

    try {
      const res = await supabase.functions.invoke("ai-coach", {
        body: { message: text },
      });

      const assistantMsg: Message = {
        id: `asst-${Date.now()}`,
        role: "assistant",
        content:
          res.data?.response ??
          t("coach.error"),
      };
      setMessages((prev) => [...prev, assistantMsg]);
      Haptics.notificationAsync(Haptics.NotificationFeedbackType.Success);
    } catch {
      const errorMsg: Message = {
        id: `err-${Date.now()}`,
        role: "assistant",
        content: t("coach.error"),
      };
      setMessages((prev) => [...prev, errorMsg]);
    } finally {
      setLoading(false);
    }
  }, [input, loading, t]);

  if (!isSubscribed) {
    return (
      <SafeAreaView style={styles.container} edges={["top"]}>
        <Text style={styles.title}>{t("coach.title")}</Text>
        <View style={styles.gatedState}>
          <View style={styles.gatedContent}>
            <OwlMascot pose="reading" size={140} />
            <Text style={styles.gatedTitle}>{t("coach.gatedTitle")}</Text>
            <Text style={styles.gatedSubtitle}>{t("coach.gatedSubtitle")}</Text>
          </View>
        </View>
      </SafeAreaView>
    );
  }

  return (
    <SafeAreaView style={styles.container} edges={["top"]}>
      <Text style={styles.title}>{t("coach.title")}</Text>

      <KeyboardAvoidingView
        behavior={Platform.OS === "ios" ? "padding" : undefined}
        style={styles.chatArea}
        keyboardVerticalOffset={100}
      >
        {messages.length === 0 ? (
          <View style={styles.emptyState}>
            <View style={styles.emptyContent}>
              <OwlMascot pose="default" size={120} />
              <Text style={styles.emptyTitle}>{t("coach.welcomeTitle")}</Text>
              <Text style={styles.emptySubtitle}>
                {t("coach.welcomeSubtitle")}
              </Text>
              <Text style={styles.disclaimer}>{t("coach.disclaimer")}</Text>
            </View>
          </View>
        ) : (
          <FlatList
            ref={flatListRef}
            data={messages}
            keyExtractor={(item) => item.id}
            contentContainerStyle={styles.messageList}
            showsVerticalScrollIndicator={false}
            onContentSizeChange={() =>
              flatListRef.current?.scrollToEnd({ animated: true })
            }
            renderItem={({ item }) => (
              <View
                style={[
                  styles.bubble,
                  item.role === "user" ? styles.userBubble : styles.assistantBubble,
                ]}
              >
                <Text
                  style={[
                    styles.bubbleText,
                    item.role === "user"
                      ? styles.userText
                      : styles.assistantText,
                  ]}
                >
                  {item.content}
                </Text>
              </View>
            )}
          />
        )}

        <View style={styles.inputRow}>
          <TextInput
            style={styles.input}
            placeholder={t("coach.placeholder")}
            placeholderTextColor={colors.textTertiary}
            value={input}
            onChangeText={setInput}
            multiline
            maxLength={500}
            returnKeyType="send"
            onSubmitEditing={sendMessage}
            editable={!loading}
            keyboardAppearance="dark"
          />
          <Pressable
            onPress={sendMessage}
            disabled={loading || !input.trim()}
            style={[
              styles.sendButton,
              (!input.trim() || loading) && styles.sendButtonDisabled,
            ]}
          >
            {loading ? (
              <ActivityIndicator size="small" color={colors.background} />
            ) : (
              <Text style={styles.sendIcon}>↑</Text>
            )}
          </Pressable>
        </View>

        <Text style={styles.limitNote}>
          {t("coach.limitNote", { limit: 10 })}
        </Text>
      </KeyboardAvoidingView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background,
  },
  title: {
    ...typography.h1,
    color: colors.textPrimary,
    paddingHorizontal: spacing.md,
    marginTop: spacing.md,
    marginBottom: spacing.md,
    letterSpacing: -0.5,
  },
  chatArea: {
    flex: 1,
  },
  gatedState: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  gatedContent: {
    alignItems: "center",
    gap: spacing.sm,
    paddingHorizontal: spacing.xl,
  },
  gatedTitle: {
    ...typography.h2,
    color: colors.textPrimary,
    textAlign: "center",
  },
  gatedSubtitle: {
    ...typography.body,
    color: colors.textSecondary,
    textAlign: "center",
  },
  emptyState: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  emptyContent: {
    alignItems: "center",
    gap: spacing.sm,
    paddingHorizontal: spacing.xl,
  },
  emptyTitle: {
    ...typography.h2,
    color: colors.textPrimary,
  },
  emptySubtitle: {
    ...typography.body,
    color: colors.textSecondary,
    textAlign: "center",
  },
  disclaimer: {
    ...typography.caption,
    color: colors.textTertiary,
    textAlign: "center",
    fontStyle: "italic",
    marginTop: spacing.sm,
  },
  messageList: {
    paddingHorizontal: spacing.md,
    paddingBottom: spacing.md,
    gap: spacing.sm,
  },
  bubble: {
    maxWidth: "80%",
    paddingHorizontal: spacing.md,
    paddingVertical: spacing.sm + 2,
    borderRadius: radii.lg,
  },
  userBubble: {
    alignSelf: "flex-end",
    backgroundColor: colors.accent,
    borderBottomRightRadius: radii.sm,
  },
  assistantBubble: {
    alignSelf: "flex-start",
    backgroundColor: colors.surface,
    borderBottomLeftRadius: radii.sm,
    borderWidth: 1,
    borderColor: colors.border,
  },
  bubbleText: {
    ...typography.body,
    lineHeight: 22,
  },
  userText: {
    color: colors.background,
  },
  assistantText: {
    color: colors.textPrimary,
  },
  inputRow: {
    flexDirection: "row",
    alignItems: "flex-end",
    paddingHorizontal: spacing.md,
    paddingVertical: spacing.sm,
    gap: spacing.sm,
  },
  input: {
    flex: 1,
    ...typography.body,
    color: colors.textPrimary,
    backgroundColor: colors.surface,
    borderRadius: radii.lg,
    borderWidth: 1,
    borderColor: colors.border,
    paddingHorizontal: spacing.md,
    paddingVertical: spacing.sm + 2,
    maxHeight: 100,
  },
  sendButton: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: colors.accent,
    justifyContent: "center",
    alignItems: "center",
  },
  sendButtonDisabled: {
    backgroundColor: colors.surfaceElevated,
  },
  sendIcon: {
    fontSize: 20,
    fontWeight: "700",
    color: colors.background,
  },
  limitNote: {
    ...typography.label,
    color: colors.textTertiary,
    textAlign: "center",
    paddingBottom: spacing.xs,
  },
});
