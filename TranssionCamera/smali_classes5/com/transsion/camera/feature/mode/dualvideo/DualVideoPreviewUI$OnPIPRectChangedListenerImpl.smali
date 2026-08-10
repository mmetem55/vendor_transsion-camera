.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;
.super Ljava/lang/Object;
.source "DualVideoPreviewUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPIPRectChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;)V
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    return-void
.end method


# virtual methods
.method public onChangeBegin()V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;->onPIPRectChangeBegin()V

    :cond_0
    return-void
.end method

.method public onChangeEnd()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;->onPIPRectChangeEnd()V

    :cond_0
    return-void
.end method

.method public onChanging(IIII)V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;->OnPIPRectChanging(IIII)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    .line 511
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 512
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    move-result-object p0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;->OnPIPRectClicked(Z)V

    :cond_0
    return-void
.end method
