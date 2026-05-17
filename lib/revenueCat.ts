import { Platform } from "react-native";
import Purchases, {
  type CustomerInfo,
  type PurchasesOffering,
  LOG_LEVEL,
} from "react-native-purchases";

const API_KEY = process.env.EXPO_PUBLIC_REVENUECAT_IOS_API_KEY ?? "";

const ENTITLEMENT_ID = "premium";

export async function initRevenueCat(userId?: string) {
  if (!API_KEY) return;

  Purchases.setLogLevel(LOG_LEVEL.DEBUG);
  Purchases.configure({ apiKey: API_KEY, appUserID: userId });
}

export async function getOfferings(): Promise<PurchasesOffering | null> {
  try {
    const offerings = await Purchases.getOfferings();
    return offerings.current;
  } catch {
    return null;
  }
}

export async function purchasePackage(
  packageToPurchase: any,
): Promise<boolean> {
  try {
    const { customerInfo } = await Purchases.purchasePackage(packageToPurchase);
    return isPremium(customerInfo);
  } catch {
    return false;
  }
}

export async function restorePurchases(): Promise<boolean> {
  try {
    const customerInfo = await Purchases.restorePurchases();
    return isPremium(customerInfo);
  } catch {
    return false;
  }
}

export async function checkSubscription(): Promise<boolean> {
  try {
    const customerInfo = await Purchases.getCustomerInfo();
    return isPremium(customerInfo);
  } catch {
    return false;
  }
}

export function isPremium(customerInfo: CustomerInfo): boolean {
  return (
    customerInfo.entitlements.active[ENTITLEMENT_ID] !== undefined
  );
}

export async function loginUser(userId: string) {
  try {
    await Purchases.logIn(userId);
  } catch {}
}

export async function logoutUser() {
  try {
    await Purchases.logOut();
  } catch {}
}
