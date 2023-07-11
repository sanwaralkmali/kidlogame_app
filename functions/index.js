const functions = require('firebase-functions');
const admin = require('firebase-admin');

admin.initializeApp();

// declare your function here
exports.sendInvite = functions.https.onCall((data, context) => {
    const payload = {
        notification: {
            title: 'Game Invitation',
            body: `${data.senderName} has invited you to play a game!`,
        },
        token: data.receiverFcmToken,
    };

    return admin.messaging().send(payload)
        .then((response) => {
            // Response is a message ID string.
            console.log('Successfully sent message:', response);
            return { success: true };
        })
        .catch((error) => {
            console.log('Error sending message:', error);
            return { success: false };
        });
});
