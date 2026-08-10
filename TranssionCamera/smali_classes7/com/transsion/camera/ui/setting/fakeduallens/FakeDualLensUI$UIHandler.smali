.class Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;
.super Landroid/os/Handler;
.source "FakeDualLensUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;
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
            "Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;

    if-nez p0, :cond_0

    .line 55
    invoke-static {}, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "fakeDualLensUI is null, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 58
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->access$100(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;I)V

    :goto_0
    return-void
.end method
