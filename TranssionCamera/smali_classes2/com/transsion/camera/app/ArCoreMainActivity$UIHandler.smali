.class Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;
.super Landroid/os/Handler;
.source "ArCoreMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ArCoreMainActivity;
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
            "Lcom/transsion/camera/app/ArCoreMainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V
    .locals 1

    .line 200
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 201
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ArCoreMainActivity;Lcom/transsion/camera/app/ArCoreMainActivity$1;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ArCoreMainActivity;

    if-nez p0, :cond_0

    .line 208
    invoke-static {}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 211
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/16 p1, 0x65

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$200(Lcom/transsion/camera/app/ArCoreMainActivity;)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$100(Lcom/transsion/camera/app/ArCoreMainActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 219
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->showWaitPage()V

    :goto_0
    return-void
.end method
