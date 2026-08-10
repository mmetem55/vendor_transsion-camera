.class Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TemplateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mItemClickListener:Lcom/transsion/camera/feature/mode/movie/ui/template/IItemClickListener;

.field private final mMovieItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I


# direct methods
.method public static synthetic $r8$lambda$Z0lGuS39DSHNfDnoGWdaeMDJst4(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->onItemClicked(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->mMovieItems:Ljava/util/List;

    return-void
.end method

.method private isLandscape()Z
    .locals 1

    .line 71
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->mOrientation:I

    const/4 v0, -0x1

    if-eq v0, p0, :cond_0

    if-eqz p0, :cond_0

    const/16 v0, 0xb4

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onItemClicked(I)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/movie/ui/template/IItemClickListener;

    if-eqz p0, :cond_0

    .line 78
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/IItemClickListener;->onItemClicked(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->mMovieItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;I)V
    .locals 3

    .line 63
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->mMovieItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;

    .line 66
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->setItemClickListener(Lcom/transsion/camera/feature/mode/movie/ui/template/IItemClickListener;)V

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->isLandscape()Z

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->bindViewHolder(Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;IZ)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;
    .locals 0

    .line 55
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onCreateViewHolder"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->createViewHolder(Landroid/view/ViewGroup;)Lcom/transsion/camera/feature/mode/movie/ui/template/holder/ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method setItemClickListener(Lcom/transsion/camera/feature/mode/movie/ui/template/IItemClickListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/movie/ui/template/IItemClickListener;

    return-void
.end method

.method updateOrientation(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->mOrientation:I

    return-void
.end method
