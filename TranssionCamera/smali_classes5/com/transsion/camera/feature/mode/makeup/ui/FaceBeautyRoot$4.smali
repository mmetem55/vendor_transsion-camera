.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$4;
.super Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;
.source "FaceBeautyRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;-><init>(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method


# virtual methods
.method protected getStoreScope()Ljava/lang/String;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->access$200(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
