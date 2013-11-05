.class public Lcom/android/ex/photo/Intents;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/photo/Intents$1;,
        Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    #p0=(Reference);
    return-void
.end method

.method public static newPhotoViewFragmentIntentBuilder(Landroid/content/Context;)Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 3
    .parameter

    .prologue
    .line 71
    new-instance v0, Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;

    #v0=(UninitRef);
    const-class v1, Lcom/android/ex/photo/fragments/PhotoViewFragment;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v0, p0, v1, v2}, Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/android/ex/photo/Intents$1;)V

    #v0=(Reference);
    return-object v0
.end method

.method public static newPhotoViewIntentBuilder(Landroid/content/Context;Ljava/lang/Class;)Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, p1, v1}, Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/android/ex/photo/Intents$1;)V

    #v0=(Reference);
    return-object v0
.end method
