@ws
@requires: 'authenticated-user'
service ConversationsService {
    @ws.currentUser.exclude: true
    event conversationsUpdated {
        requestId : UUID;
    }
}
