.class Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;
.super Ljava/lang/Object;
.source "MoreView.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/MoreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .locals 0

    .line 1351
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreView$1;)V
    .locals 0

    .line 1351
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    return-void
.end method


# virtual methods
.method public onSwitchMode(Ljava/lang/String;)V
    .locals 3

    .line 1354
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$1600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchMode, mIsEditMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$1200(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1355
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$1200(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$1900(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1358
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$2000(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1359
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$2000(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;->notifyClickModeIcon()V

    .line 1361
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$2100(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1362
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->access$2100(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
