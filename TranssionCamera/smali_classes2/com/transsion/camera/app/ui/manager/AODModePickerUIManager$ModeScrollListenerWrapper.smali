.class Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager$ModeScrollListenerWrapper;
.super Ljava/lang/Object;
.source "AODModePickerUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeScrollListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager$ModeScrollListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager$ModeScrollListenerWrapper;->mDelegate:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager$1;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager$ModeScrollListenerWrapper;-><init>(Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V

    return-void
.end method


# virtual methods
.method public scrollStarted()V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager$ModeScrollListenerWrapper;->mDelegate:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;->scrollStarted()V

    return-void
.end method

.method public scrollStopped(I)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager$ModeScrollListenerWrapper;->mDelegate:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;->scrollStopped(I)V

    return-void
.end method

.method public updateScrollIndex(I)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager$ModeScrollListenerWrapper;->mDelegate:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;->updateScrollIndex(I)V

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager$ModeScrollListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;)Lcom/transsion/camera/app/ui/IModeIndicatorUI;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeIndicatorUI;->updateSelectedIndex(I)V

    return-void
.end method
