.class Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;
.super Ljava/lang/Object;
.source "ModePanelUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModePanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePanelUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ModePanelUI;Lcom/transsion/camera/app/ui/ModePanelUI$1;)V
    .locals 0

    .line 290
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V

    return-void
.end method


# virtual methods
.method public onSwitchMode(Ljava/lang/String;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$100(Lcom/transsion/camera/app/ui/ModePanelUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$200(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$200(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "select same mode, hideModePanel."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$400(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->hideModePanel()V

    .line 301
    :cond_1
    :goto_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const-string p1, "click_mode_icon"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordExitMoreModeOperation(Ljava/lang/String;)V

    return-void
.end method
