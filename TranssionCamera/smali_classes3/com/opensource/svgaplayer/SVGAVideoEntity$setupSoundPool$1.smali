.class public final Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;
.super Ljava/lang/Object;
.source "SVGAVideoEntity.kt"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAVideoEntity;->setupSoundPool(Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $completionBlock:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $entity:Lcom/opensource/svgaplayer/proto/MovieEntity;

.field final synthetic $soundLoaded:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAVideoEntity;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lkotlin/jvm/internal/Ref$IntRef;Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/opensource/svgaplayer/proto/MovieEntity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;->this$0:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;->$soundLoaded:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;->$entity:Lcom/opensource/svgaplayer/proto/MovieEntity;

    iput-object p4, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;->$completionBlock:Lkotlin/jvm/functions/Function0;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
