.class public abstract Lcom/transsion/camera/feature/slimbody/holder/RvHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RvHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract bindHolder(Ljava/lang/Object;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)V"
        }
    .end annotation
.end method
