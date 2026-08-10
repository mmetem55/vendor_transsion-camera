.class Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;
.super Ljava/lang/Object;
.source "ElasticityListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerOnScrollListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;


# direct methods
.method private constructor <init>(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;->this$0:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;->mScrollState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$1;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;-><init>(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;->this$0:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-static {v0, p2}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->access$302(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;I)I

    .line 161
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;->this$0:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-static {v0, p3}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->access$402(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;I)I

    .line 166
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;->this$0:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->access$200(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;->this$0:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->access$200(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 148
    iget v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;->this$0:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->access$100(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)V

    .line 151
    :cond_0
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;->mScrollState:I

    .line 153
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;->this$0:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->access$200(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;->this$0:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->access$200(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method
