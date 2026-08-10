.class Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ModePanelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModePanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePanelUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ModePanelUI;Lcom/transsion/camera/app/ui/ModePanelUI$1;)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 325
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 326
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 327
    rem-int/lit8 p2, p2, 0x3

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$700(Lcom/transsion/camera/app/ui/ModePanelUI;)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$700(Lcom/transsion/camera/app/ui/ModePanelUI;)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 332
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$800(Lcom/transsion/camera/app/ui/ModePanelUI;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$800(Lcom/transsion/camera/app/ui/ModePanelUI;)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void
.end method
