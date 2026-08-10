.class Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$8;
.super Ljava/lang/Object;
.source "MagicSkyPanelUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$8;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;)V
    .locals 3

    .line 469
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;->skyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$8;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;->skyValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$502(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;I)I

    .line 471
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$8;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$500(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSkyType(I)V

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$8;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$600(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$8;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$600(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;->skyValue:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
