.class public Lcom/transsion/widgetslib/widget/SearchBar$BackClickListener;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/SearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/SearchBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    .line 783
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackClickListener;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 786
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackClickListener;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->endSearch()V

    return-void
.end method
