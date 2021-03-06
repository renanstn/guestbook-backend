from django.contrib import admin
from django.urls import include, path

from core.urls import router as core_router


urlpatterns = [
    path("", include(core_router.urls)),
    path("admin/", admin.site.urls),
    path("api-auth/", include("rest_framework.urls")),
]
