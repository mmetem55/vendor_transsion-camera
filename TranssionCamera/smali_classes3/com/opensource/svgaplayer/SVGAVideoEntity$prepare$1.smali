.class final Lcom/opensource/svgaplayer/SVGAVideoEntity$prepare$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SVGAVideoEntity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAVideoEntity;->prepare$com_opensource_svgaplayer(Lkotlin/jvm/functions/Function0;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAVideoEntity;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$prepare$1;->this$0:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity$prepare$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$prepare$1;->this$0:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-static {p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->access$getMCallback$p(Lcom/opensource/svgaplayer/SVGAVideoEntity;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "mCallback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
