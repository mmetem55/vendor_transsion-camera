.class public Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;
.super Ljava/lang/Object;
.source "WindowSurfaceFactory.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWcgSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mWcgSupport:Z

    .line 61
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mExtensions:Ljava/util/Set;

    return-void
.end method

.method private checkExtensionCapability(Ljava/lang/String;)Z
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mExtensions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private getWcgCapability()I
    .locals 1

    const-string v0, "EGL_EXT_gl_colorspace_display_p3_passthrough"

    .line 81
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->checkExtensionCapability(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3490

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 7

    .line 92
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->getWcgCapability()I

    move-result v0

    const-string v1, "EGL_KHR_gl_colorspace"

    .line 93
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->checkExtensionCapability(Ljava/lang/String;)Z

    move-result v1

    .line 94
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mWcgSupport:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x309d

    aput v5, v2, v4

    const/4 v4, 0x1

    aput v0, v2, v4

    const/4 v4, 0x2

    const/16 v5, 0x3038

    aput v5, v2, v4

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 98
    :goto_0
    sget-object v4, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createWindowSurface mWcgSupport:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mWcgSupport:Z

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "wcgCapability: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", colorSpaceCapability: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    :try_start_0
    invoke-interface {p1, p2, p3, p4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 105
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "eglCreateWindowSurface"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v3
.end method

.method public destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 0

    .line 113
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-void
.end method

.method public queryExtensions(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mWcgSupport:Z

    if-nez v0, :cond_0

    .line 66
    sget-object p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "wide color gamut rendering not support, no need to query extensions!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mExtensions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/16 v0, 0x3055

    .line 70
    invoke-interface {p1, p2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->mExtensions:Ljava/util/Set;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
