.class Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;
.super Landroid/os/Handler;
.source "FunVideoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V
    .locals 1

    .line 523
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 524
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-nez p0, :cond_0

    .line 530
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage FunVideoUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 533
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 562
    :pswitch_0
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "initGridViewUI start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 563
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$1100(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    .line 564
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$1200(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    .line 565
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "initGridViewUI end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :pswitch_1
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$1000(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 558
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$1000(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 539
    :pswitch_2
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$200(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 540
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$200(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 542
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$300(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 544
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$400(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    .line 545
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$100(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    .line 546
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$500(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$600(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;I)V

    .line 548
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$900(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    move-result-object p1

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$700(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)I

    move-result v0

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$800(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->startDrawProgress(ID)V

    goto :goto_0

    .line 552
    :pswitch_3
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$300(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 553
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$900(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->stopDrawProgress()V

    goto :goto_0

    .line 535
    :pswitch_4
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->access$100(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
