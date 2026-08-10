.class Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;
.super Landroid/os/Handler;
.source "PreferenceItemUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;
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
            "Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V
    .locals 1

    .line 571
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 572
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$1;)V
    .locals 0

    .line 568
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;-><init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 577
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    if-nez p0, :cond_0

    .line 579
    invoke-static {}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 583
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/16 p1, 0x65

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 589
    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->access$800(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Ljava/lang/String;)V

    goto :goto_0

    .line 585
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 586
    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->access$700(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
