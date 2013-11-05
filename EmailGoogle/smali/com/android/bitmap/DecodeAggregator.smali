.class public Lcom/android/bitmap/DecodeAggregator;
.super Lcom/android/bitmap/ContiguousFIFOAggregator;
.source "DecodeAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bitmap/DecodeAggregator$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/bitmap/ContiguousFIFOAggregator",
        "<",
        "Lcom/android/bitmap/DecodeTask$Request;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/bitmap/ContiguousFIFOAggregator;-><init>()V

    .line 23
    #p0=(Reference);
    return-void
.end method
