.class Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;
.super Ljava/lang/Object;
.source "BaseAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 2983
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V
    .locals 0

    .line 2983
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void
.end method


# virtual methods
.method public onSwitchMode(Ljava/lang/String;)V
    .locals 3

    const-string v0, "onSwitchMode"

    .line 2986
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2987
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 2988
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchMode modeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2989
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$602(Lcom/transsion/camera/app/ui/BaseAppUI;Ljava/lang/String;)Ljava/lang/String;

    .line 2990
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    if-eqz v0, :cond_2

    const-string v0, "com.transsion.camera.feature.ar_drawline.ARDrawlineModeEntry"

    .line 2991
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2992
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$4400(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    .line 2993
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2994
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$4500(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    goto :goto_0

    .line 2996
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    .line 2997
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->onSwitchMode(Ljava/lang/String;)V

    .line 3000
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->modePicked()V

    return-void
.end method
