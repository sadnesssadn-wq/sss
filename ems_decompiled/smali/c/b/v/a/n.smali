.class public Lc/b/v/a/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/emsportal/user/activity/LogInActivity;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p2, p0, Lc/b/v/a/n;->c:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lc/b/v/a/n;->c:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
