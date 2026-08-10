.class Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CustomTabPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;


# direct methods
.method public static synthetic $r8$lambda$uokrLCZPgVKx-lOsFfRHyyMZZ64(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;->this$0:Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$1;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;-><init>(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;->this$0:Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->access$300(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;->this$0:Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->access$100(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 71
    check-cast p1, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 71
    check-cast p1, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;I)V
    .locals 2

    .line 81
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;->imgTab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;->this$0:Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->access$100(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;->this$0:Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->access$200(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;)I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void

    .line 94
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;->this$0:Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;->access$200(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel;)I

    move-result p0

    if-ne p0, p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;
    .locals 3

    .line 76
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$layout;->custom_tab_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;-><init>(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;Landroid/view/View;)V

    return-object p2
.end method
