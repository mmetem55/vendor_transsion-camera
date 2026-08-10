.class Lcom/transsion/widgetslib/dialog/PromptController$7;
.super Ljava/lang/Object;
.source "PromptController.java"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;->generateListView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/PromptController;

.field final synthetic val$scrollBarLayout:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$7;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$7;->val$scrollBarLayout:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverScrollUpdated(F)V
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$7;->val$scrollBarLayout:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->onOverScrollUpdated(F)V

    return-void
.end method
