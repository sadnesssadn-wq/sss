.class public Lcom/zoho/livechat/android/ui/customviews/ArticleWebView;
.super Landroid/webkit/WebView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/customviews/ArticleWebView$OnScrollChangedCallback;
    }
.end annotation


# instance fields
.field private mOnScrollChangedCallback:Lcom/zoho/livechat/android/ui/customviews/ArticleWebView$OnScrollChangedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getOnScrollChangedCallback()Lcom/zoho/livechat/android/ui/customviews/ArticleWebView$OnScrollChangedCallback;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ArticleWebView;->mOnScrollChangedCallback:Lcom/zoho/livechat/android/ui/customviews/ArticleWebView$OnScrollChangedCallback;

    return-object v0
.end method

.method public onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ArticleWebView;->mOnScrollChangedCallback:Lcom/zoho/livechat/android/ui/customviews/ArticleWebView$OnScrollChangedCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/zoho/livechat/android/ui/customviews/ArticleWebView$OnScrollChangedCallback;->onScroll(IIII)V

    :cond_0
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/zoho/livechat/android/ui/customviews/ArticleWebView$OnScrollChangedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ArticleWebView;->mOnScrollChangedCallback:Lcom/zoho/livechat/android/ui/customviews/ArticleWebView$OnScrollChangedCallback;

    return-void
.end method
