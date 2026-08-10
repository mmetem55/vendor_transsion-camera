.class final Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;
.super Landroid/os/Handler;
.source "CommonPhotoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureHandler"
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUIRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/common/IAppUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 206
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 1

    .line 210
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 211
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;->mAppUIRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 216
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;->mAppUIRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/IAppUI;

    if-nez p0, :cond_0

    .line 219
    sget-object p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "appUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 222
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/16 v1, 0x2c

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 228
    :cond_1
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 p1, 0x0

    .line 225
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    :goto_0
    return-void
.end method
