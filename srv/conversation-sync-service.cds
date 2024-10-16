@ws
@requires: 'authenticated-user'
service ConversationSyncService {
    @ws.currentUser.exclude: true
    event commentCreated {
        requestId : UUID;
    }
}
