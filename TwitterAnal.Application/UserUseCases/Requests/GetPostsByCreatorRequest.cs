namespace TwitterAnal.Application.UserUseCases.Requests
{
   public sealed record GetPostsByCreatorRequest(User user) : 
        IRequest<IEnumerable<Post>>;
}
