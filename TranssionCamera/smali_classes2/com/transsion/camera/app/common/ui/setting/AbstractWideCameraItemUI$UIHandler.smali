.class public Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;
.super Landroid/os/Handler;
.source "AbstractWideCameraItemUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;-><init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    if-nez p0, :cond_0

    .line 123
    invoke-static {}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage settingUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 129
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->doOnStatusChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
