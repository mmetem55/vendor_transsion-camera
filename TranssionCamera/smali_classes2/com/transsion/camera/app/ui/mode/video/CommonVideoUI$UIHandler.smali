.class Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$UIHandler;
.super Landroid/os/Handler;
.source "CommonVideoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$1;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->access$100(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage discard the message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " after unInit"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 327
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 332
    :cond_1
    invoke-static {}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->values()[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    .line 333
    invoke-static {}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->values()[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    aget-object p1, v1, p1

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->access$300(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    goto :goto_0

    .line 329
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->access$200(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;)V

    :goto_0
    return-void
.end method
