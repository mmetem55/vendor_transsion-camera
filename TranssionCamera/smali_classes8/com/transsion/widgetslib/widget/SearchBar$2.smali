.class Lcom/transsion/widgetslib/widget/SearchBar$2;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/SearchBar;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/SearchBar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$2;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$2;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$200(Lcom/transsion/widgetslib/widget/SearchBar;)Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$2;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$200(Lcom/transsion/widgetslib/widget/SearchBar;)Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
