.class final Lcom/transsion/widgetslib/util/InputDialogFoldEngine$initWindowSoftInputMode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InputDialogFoldEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->initWindowSoftInputMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/Window;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/widgetslib/util/InputDialogFoldEngine$initWindowSoftInputMode$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$initWindowSoftInputMode$1;

    invoke-direct {v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$initWindowSoftInputMode$1;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$initWindowSoftInputMode$1;->INSTANCE:Lcom/transsion/widgetslib/util/InputDialogFoldEngine$initWindowSoftInputMode$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 263
    check-cast p1, Landroid/view/Window;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$initWindowSoftInputMode$1;->invoke(Landroid/view/Window;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/Window;)V
    .locals 0
    .param p1    # Landroid/view/Window;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "$this$flexWindow"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x30

    .line 264
    invoke-virtual {p1, p0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
