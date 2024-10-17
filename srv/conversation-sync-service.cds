@ws
@requires: 'authenticated-user'
service ConversationSyncService {
    @ws.currentUser.exclude: true
    event conversationsUpdated {
        requestId : UUID;
    }
}
