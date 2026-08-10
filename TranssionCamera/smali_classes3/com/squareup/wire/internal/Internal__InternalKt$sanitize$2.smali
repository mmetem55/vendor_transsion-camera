.class final synthetic Lcom/squareup/wire/internal/Internal__InternalKt$sanitize$2;
.super Lkotlin/jvm/internal/FunctionReference;
.source "Internal.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/internal/Internal__InternalKt;->sanitize(Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/squareup/wire/internal/Internal__InternalKt$sanitize$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/wire/internal/Internal__InternalKt$sanitize$2;

    invoke-direct {v0}, Lcom/squareup/wire/internal/Internal__InternalKt$sanitize$2;-><init>()V

    sput-object v0, Lcom/squareup/wire/internal/Internal__InternalKt$sanitize$2;->INSTANCE:Lcom/squareup/wire/internal/Internal__InternalKt$sanitize$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "sanitize"

    return-object p0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class p0, Lcom/squareup/wire/internal/Internal__InternalKt;

    const-string v0, "wire-runtime"

    .line 208
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object p0

    return-object p0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "sanitize(Ljava/lang/String;)Ljava/lang/String;"

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 208
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/Internal__InternalKt$sanitize$2;->invoke(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
