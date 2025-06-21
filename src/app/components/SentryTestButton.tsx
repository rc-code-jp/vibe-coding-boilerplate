'use client';

import * as Sentry from '@sentry/nextjs';

export default function SentryTestButton() {
  const testSentryError = () => {
    try {
      throw new Error('This is a test error for Sentry');
    } catch (error) {
      Sentry.captureException(error);
      console.error('Test error captured by Sentry:', error);
    }
  };

  const testSentryMessage = () => {
    Sentry.captureMessage('This is a test message for Sentry', 'info');
    console.log('Test message sent to Sentry');
  };

  return (
    <div className="flex gap-4">
      <button
        onClick={testSentryError}
        className="rounded bg-red-500 px-4 py-2 text-white hover:bg-red-600"
      >
        Test Sentry Error
      </button>
      <button
        onClick={testSentryMessage}
        className="rounded bg-blue-500 px-4 py-2 text-white hover:bg-blue-600"
      >
        Test Sentry Message
      </button>
    </div>
  );
} 