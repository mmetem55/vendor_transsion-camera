.class Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;
.super Landroid/os/Handler;
.source "SlavePreviewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/SlavePreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# static fields
.field private static final TAG_UI:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mPreviewUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/ui/SlavePreviewUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 315
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreviewUIHandler"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;->TAG_UI:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/SlavePreviewUI;)V
    .locals 1

    .line 318
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 319
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;->mPreviewUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;->mPreviewUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;

    if-nez p0, :cond_0

    .line 326
    sget-object p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;->TAG_UI:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage previewUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 329
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;->TAG_UI:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIHandler handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 330
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 338
    :pswitch_0
    invoke-static {p0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$400(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Lcom/transsion/camera/app/ui/anim/AnimationManager;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->cameraOperateAction(I)V

    goto :goto_0

    .line 335
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$300(Lcom/transsion/camera/app/ui/SlavePreviewUI;II)V

    goto :goto_0

    .line 332
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$200(Lcom/transsion/camera/app/ui/SlavePreviewUI;II)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
