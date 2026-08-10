.class Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CustomTabPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final imgTab:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;Landroid/view/View;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;->this$1:Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter;

    .line 107
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 108
    sget p1, Lcom/transsion/camera/feature/arcore/R$id;->img_tab:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;->imgTab:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getTabView()Landroid/widget/ImageView;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/panel/CustomTabPanel$TabAdapter$ViewHolder;->imgTab:Landroid/widget/ImageView;

    return-object p0
.end method
