/**
 * Package identity constants for @jk-com/adblock-compiler.
 */
export const VERSION = '1.0.0';
export const PACKAGE_NAME = '@jk-com/adblock-compiler';
export const USER_AGENT = `${PACKAGE_NAME}/${VERSION}`;

export const PACKAGE_INFO = {
  name: PACKAGE_NAME,
  version: VERSION,
  userAgent: USER_AGENT,
} as const;
