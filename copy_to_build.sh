read -n 1 -p "deploy to ztaira14.github.io/ztaira14? (y/n) " answer
case ${answer} in
  y|Y )
    npm run deploy
    echo "deployed to ztaira14.github.io/ztaira14"
esac
read -n 1 -p "copy to ztaira14.github.io? (y/n) " answer
case ${answer} in
  y|Y )
    echo 'modifying package.json...'
    sed -i -e "s:ztaira14.github.io/ztaira14:ztaira14.github.io:" package.json && cat package.json
    echo 'building...'
    npm run build
    echo 'moving over to ztaira14.github.io'
    mv build/index.html ../ztaira14.github.io
    mv build/asset-manifest.json ../ztaira14.github.io
    rm -r ../ztaira14.github.io/static
    mv build/static ../ztaira14.github.io
    echo 'modifying package.json back to normal...'
    sed -i -e "s:ztaira14.github.io:ztaira14.github.io/ztaira14:" package.json && cat package.json
    echo 'done!'
esac
