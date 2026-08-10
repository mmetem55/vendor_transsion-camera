.class Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "GuidePagerRootFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/GuidePagerRootFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;->this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;-><init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;->this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->access$200(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;->this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->access$200(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;->this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->access$300(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f080692

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$PagerListener;->this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->access$300(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const p1, 0x7f080691

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method
