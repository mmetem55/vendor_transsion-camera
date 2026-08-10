.class Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;
.super Landroid/os/Handler;
.source "AnimalEyeDetectionUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;
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
            "Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    if-nez p0, :cond_0

    .line 88
    invoke-static {}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage eyeDetectionUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->hideEntryView()V

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->showEntryView()V

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    .line 94
    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->access$400(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;[I)V

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
