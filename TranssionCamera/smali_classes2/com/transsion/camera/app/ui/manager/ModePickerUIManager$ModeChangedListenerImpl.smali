.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;
.super Ljava/lang/Object;
.source "ModePickerUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V
    .locals 0

    .line 874
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    return-void
.end method


# virtual methods
.method public onSwitchMode(Ljava/lang/String;)V
    .locals 6

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    .line 878
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "slide_preview_or_click_tab"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 879
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mClickGuideIconEnterMoreMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1400(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 880
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1400(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1402(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)Z

    .line 882
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    const-string v2, "click_guide_icon"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordEnterMoreModeOperation(Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordEnterMoreModeOperation(Ljava/lang/String;)V

    goto :goto_0

    .line 886
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1700(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1800(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 887
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1802(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)Ljava/lang/String;

    .line 888
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mClickModeIcon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v5}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1500(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 889
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1500(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 890
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1502(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)Z

    .line 891
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    const-string v2, "click_mode_icon"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordExitMoreModeOperation(Ljava/lang/String;)V

    goto :goto_0

    .line 893
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordExitMoreModeOperation(Ljava/lang/String;)V

    .line 897
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1900(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V

    .line 898
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "FURTHER_MODE_TAG"

    .line 899
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 900
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->showMore()V

    return-void

    .line 902
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 903
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2200(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    goto/16 :goto_1

    .line 905
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 906
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 907
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1700(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 908
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1700(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeNameBeforeSwitchMoreMode(Ljava/lang/String;)V

    .line 910
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x92

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 911
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->hideWideCamera()V

    .line 912
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->hideInteractiveUI()V

    .line 913
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideHintLayout(Z)V

    .line 914
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideTopAndBottomView(Z)V

    .line 915
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->show()V

    .line 916
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1802(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 918
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x9b

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 919
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideHintLayout(Z)V

    .line 920
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideTopAndBottomView(Z)V

    .line 921
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->hide()V

    .line 925
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    if-eqz v0, :cond_9

    .line 926
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2400(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 928
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2500(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->setSPVal(Landroid/content/Context;Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateTabSellingPointState()V

    .line 930
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->showMode(Ljava/lang/String;)V

    .line 933
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->refreshModePanelView()V

    return-void
.end method
