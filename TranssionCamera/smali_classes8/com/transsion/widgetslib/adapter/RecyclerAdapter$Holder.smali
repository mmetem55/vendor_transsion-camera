.class public abstract Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/adapter/RecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Holder"
.end annotation


# instance fields
.field protected mIsSetOnClickListener:Z

.field protected mIsSetOnLongClickListener:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setSetOnClickListener(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;->mIsSetOnClickListener:Z

    return-void
.end method

.method public setSetOnLongClickListener(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;->mIsSetOnLongClickListener:Z

    return-void
.end method
