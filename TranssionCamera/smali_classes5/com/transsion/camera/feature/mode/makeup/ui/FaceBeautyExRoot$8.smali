.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$8;
.super Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;
.source "FaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$8;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;-><init>(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method


# virtual methods
.method protected getStoreScope()Ljava/lang/String;
    .locals 0

    .line 550
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$8;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
