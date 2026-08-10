.class Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;
.super Ljava/lang/Object;
.source "AnimalEyeDetection.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimalEyeDetectionCallback([I)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    const-string v1, "key_auto_focus_switch"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 39
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->access$000(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;[I)V

    :cond_0
    return-void
.end method
