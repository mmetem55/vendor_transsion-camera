.class Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "ModeOrderEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$1;->this$0:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$1;->this$0:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->access$000(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getItemViewType(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    return p1
.end method
