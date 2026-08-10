.class final Lcom/unity3d/player/UnityPlayer$15;
.super Lcom/unity3d/player/UnityPlayer$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->reportSoftInputArea(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$15;->b:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer$15;->a:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer$h;-><init>(Lcom/unity3d/player/UnityPlayer;B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$15;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$15;->a:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/unity3d/player/UnityPlayer;->access$3500(Lcom/unity3d/player/UnityPlayer;IIII)V

    return-void
.end method
