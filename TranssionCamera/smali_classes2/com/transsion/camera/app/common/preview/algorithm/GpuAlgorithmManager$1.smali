.class Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;
.super Ljava/lang/Object;
.source "GpuAlgorithmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onModeInit([ILcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

.field final synthetic val$algos:[I

.field final synthetic val$cameraId:Ljava/lang/String;

.field final synthetic val$imageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

.field final synthetic val$previewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field final synthetic val$settingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;[ILcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    iput-object p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$algos:[I

    iput-object p3, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$imageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    iput-object p4, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$cameraId:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$settingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iput-object p6, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$previewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$algos:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 52
    iget-object v4, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {v4}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->access$100(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {v5}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->access$000(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->access$100(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    .line 55
    iget-object v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$imageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    iget-object v3, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$cameraId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$settingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object v5, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$previewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    goto :goto_1

    :cond_1
    return-void
.end method
