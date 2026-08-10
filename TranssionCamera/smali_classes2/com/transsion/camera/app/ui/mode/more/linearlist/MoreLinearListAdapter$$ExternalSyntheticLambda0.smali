.class public final synthetic Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->$r8$lambda$xOzDgZubj3tinZjF-uobBusKJXQ(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
