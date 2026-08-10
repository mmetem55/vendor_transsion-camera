.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$UIHandler;
.super Landroid/os/Handler;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# static fields
.field public static final MSG_HIDE_COVER:I = 0x65

.field public static final MSG_SHOW_COVER:I = 0x64

.field public static final SHOW_COVER_TIME:I = 0x50


# instance fields
.field l:J

.field private final mUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/arcore/manager/ModuleManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V
    .locals 2

    .line 890
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v0, 0x0

    .line 888
    iput-wide v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$UIHandler;->l:J

    .line 891
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Lcom/transsion/camera/feature/arcore/manager/ModuleManager$1;)V
    .locals 0

    .line 883
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$UIHandler;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 896
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    if-nez p0, :cond_0

    .line 898
    invoke-static {}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$1400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage hintUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 901
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 906
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updatePreviewCoverImage(ZLandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 903
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updatePreviewCoverImage(ZLandroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
