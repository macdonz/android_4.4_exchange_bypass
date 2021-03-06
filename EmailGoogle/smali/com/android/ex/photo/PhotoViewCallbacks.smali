.class public interface abstract Lcom/android/ex/photo/PhotoViewCallbacks;
.super Ljava/lang/Object;
.source "PhotoViewCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/photo/PhotoViewCallbacks$CursorChangedListener;,
        Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;
    }
.end annotation


# virtual methods
.method public abstract addCursorListener(Lcom/android/ex/photo/PhotoViewCallbacks$CursorChangedListener;)V
.end method

.method public abstract addScreenListener(ILcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;)V
.end method

.method public abstract getAdapter()Lcom/android/ex/photo/adapters/PhotoPagerAdapter;
.end method

.method public abstract isFragmentActive(Landroid/support/v4/app/Fragment;)Z
.end method

.method public abstract isFragmentFullScreen(Landroid/support/v4/app/Fragment;)Z
.end method

.method public abstract onCreateBitmapLoader(ILandroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onCursorChanged(Lcom/android/ex/photo/fragments/PhotoViewFragment;Landroid/database/Cursor;)V
.end method

.method public abstract onFragmentPhotoLoadComplete(Lcom/android/ex/photo/fragments/PhotoViewFragment;Z)V
.end method

.method public abstract onFragmentVisible(Lcom/android/ex/photo/fragments/PhotoViewFragment;)V
.end method

.method public abstract onNewPhotoLoaded(I)V
.end method

.method public abstract removeCursorListener(Lcom/android/ex/photo/PhotoViewCallbacks$CursorChangedListener;)V
.end method

.method public abstract removeScreenListener(I)V
.end method

.method public abstract toggleFullScreen()V
.end method
