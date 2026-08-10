.class Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;
.super Landroid/os/Handler;
.source "PopupOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/setting/PopupOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/ui/setting/PopupOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V
    .locals 1

    .line 161
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 162
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/setting/PopupOption;Lcom/transsion/camera/app/ui/setting/PopupOption$1;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-nez p0, :cond_0

    .line 169
    invoke-static {}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$700()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage popupOption is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 173
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopup()V

    :goto_0
    return-void
.end method
