.class Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;
.super Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;
.source "MagicSkyPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateSettingUILayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;-><init>(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method


# virtual methods
.method protected getStoreScope()Ljava/lang/String;
    .locals 0

    .line 781
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$600(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
