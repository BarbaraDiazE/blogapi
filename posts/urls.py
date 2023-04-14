# from django.urls import path

# from posts.views import PostList, PostDetail, UserList, UserDetail

# urlpatterns = [
#     path('<int:pk>/', PostDetail.as_view()),
#     path('', PostList.as_view()),
#     path('user/', UserList.as_view()),
#     path('users/<int:pk>', PostDetail.as_view())
# ]
from django.urls import path
from rest_framework.routers import SimpleRouter

from posts.views import UserViewSet, PostViewSet

router = SimpleRouter()
router.register('users', UserViewSet, base_name='users')
router.register('', PostViewSet, base_name='posts')

urlpatterns = router.urls
