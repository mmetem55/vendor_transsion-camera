.class Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$3;
.super Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;
.source "SlimBodyRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

.field final synthetic val$iSetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$3;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$3;->val$iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;-><init>(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method


# virtual methods
.method protected getStoreScope()Ljava/lang/String;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$3;->val$iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
