.class Lcom/transsion/camera/app/ui/ShareUI$UIHandler;
.super Landroid/os/Handler;
.source "ShareUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ShareUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ShareUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ShareUI;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/ShareUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ShareUI;Lcom/transsion/camera/app/ui/ShareUI$1;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ShareUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/ShareUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/ShareUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ShareUI;->access$100(Lcom/transsion/camera/app/ui/ShareUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_2

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/ShareUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ShareUI;->access$100(Lcom/transsion/camera/app/ui/ShareUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShareUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/ShareUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ShareUI;->access$100(Lcom/transsion/camera/app/ui/ShareUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/ShareUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ShareUI;->access$200(Lcom/transsion/camera/app/ui/ShareUI;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 174
    invoke-static {}, Lcom/transsion/camera/app/ui/ShareUI;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupViews mBottomOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ShareUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/ShareUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/ShareUI;->access$200(Lcom/transsion/camera/app/ui/ShareUI;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/ShareUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ShareUI;->access$100(Lcom/transsion/camera/app/ui/ShareUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/ShareUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ShareUI;->access$100(Lcom/transsion/camera/app/ui/ShareUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
